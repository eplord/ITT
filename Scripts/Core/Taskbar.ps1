function Set-Taskbar {
    
    param (
        [string]$progress,
        [double]$value,
        [string]$icon
    )


    if ($value) {
        $itt["window"].taskbarItemInfo.ProgressValue = $value
    }


    if($progress)
    {
        switch ($progress) {
            'None' { $itt["window"].taskbarItemInfo.ProgressState = "None" }
            'Normal' { $itt["window"].taskbarItemInfo.ProgressState = "Normal" }
            'Indeterminate' { $itt["window"].taskbarItemInfo.ProgressState = "Indeterminate" }
            'Error' { $itt["window"].taskbarItemInfo.ProgressState = "Error" }
            default { throw "Set-Taskbar Invalid state" }
        }
    }

    if($icon)
    {
        switch ($icon) {

            "done" {
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/done.png"
            }

            "logo" {
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico"
            }
        }
    }
}