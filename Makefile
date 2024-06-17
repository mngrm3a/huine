quine: Make.hs Main.hs 
	runhaskell Make.hs -- Main.hs > Quine.hs

test: Quine.hs
	runhaskell Quine.hs > Replica.hs
	shasum -a 256 Quine.hs | shasum -a 256 Replica.hs | shasum -c

.PHONY: clean
clean:
	rm Quine.hs Replica.hs