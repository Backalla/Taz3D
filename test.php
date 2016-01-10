<?php
$fi = new FilesystemIterator("cws/", FilesystemIterator::SKIP_DOTS);
echo iterator_count($fi);
?>
