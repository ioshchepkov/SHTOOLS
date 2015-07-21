#!/usr/bin/env runghc
-- delink.hs
import Text.Pandoc.JSON

main = toJSONFilter delink

delink :: Inline -> [Inline]
delink (Link txt _) = txt
delink x            = [x]
