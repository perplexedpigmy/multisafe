;; Title: MultiSafe add owner executor
;; Author: Talha Bugra Bulut & Trust Machines

(impl-trait .traits.executor-trait)
(use-trait safe-trait .traits.safe-trait)
(use-trait nft-trait .traits.sip-009-trait)
(use-trait ft-trait .traits.sip-010-trait)

(define-public (execute (safe <safe-trait>) (param-ft <ft-trait>) (param-nft <nft-trait>) (param-p (optional principal)) (param-u (optional uint)) (param-b (optional (buff 20))))
	(contract-call? safe add-owner (unwrap! param-p (err u9999)))
)
