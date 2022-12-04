function _manual_close_pair_or_complete --description 'Invoke _manual_close_pair. Afterwards, if there was nothing to do, invoke regular tab completion.'
    _manual_close_pair
    if test $status -eq 1
        commandline -f complete
    end
end
