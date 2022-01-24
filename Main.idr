module Main

import Test.Golden

main : IO ()
main = runner [!(testsInDir "examples" (const True) "description..." [] Nothing)]
