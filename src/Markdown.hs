module Markdown where
import Control.Concurrent (waitQSem)

type Markdown = [Component]

data Component
  = Heading Int Markdown
  | Bold Markdown
  | Italic Markdown
  deriving Show

textToMarkdown :: String -> Markdown
textToMarkdown ('*':xs) = [Heading 1 []]

