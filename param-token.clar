(define-map balances (principal) (uint))

(define-constant token-supply u1000000)
(define-data-var total-supply uint u0)
(define-constant admin tx-sender)

(define-public (mint (recipient principal) (amount uint))
    (begin
        (asserts! (is-eq tx-sender admin) (err "Only admin can mint"))
        (let ((current-balance (default-to u0 (map-get? balances recipient))))
            (map-set balances recipient (+ current-balance amount))
        )
        (var-set total-supply (+ (var-get total-supply) amount))
        (ok true)
    )
)

(define-public (transfer (recipient principal) (amount uint))
    (let (
        (sender tx-sender)
        (sender-balance (default-to u0 (map-get? balances sender)))
    )
        (begin
            (asserts! (>= sender-balance amount) (err "Insufficient balance"))
            (map-set balances sender (- sender-balance amount))
            (let ((recipient-balance (default-to u0 (map-get? balances recipient))))
                (map-set balances recipient (+ recipient-balance amount))
            )
            (ok true)
        )
    )
)

(define-read-only (get-balance (user principal))
    (ok (default-to u0 (map-get? balances user)))
)

(define-read-only (get-total-supply)
    (ok (var-get total-supply))
)