#!/bin/bash

SPACE_SIDS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
SPACE_ICONS=(":terminal:" ":code:" ":google_chrome:" ":mattermost:" ":mail:" ":obsidian:" ":todoist:" ":spotify:" ":desktop:" ":desktop:")

for i in "${!SPACE_SIDS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon=${SPACE_SIDS[i]}                                  \
                              label="${SPACE_ICONS[i]}"                                  \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.padding_right=5                     \
                              label.y_offset=-1                          \
                              script="$PLUGIN_DIR/space.sh"              
done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􀆊"                                \
                                 icon.color=$ACCENT_COLOR \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change                           
