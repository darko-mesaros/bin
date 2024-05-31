# Flips between fonts in kitty
# pkill
# kitty
# sed
# grep

FONT_MAIN="font_family      JetBrains Mono NL"
FONT_PX="font_family      BigBlueTermPlus Nerd Font"
FILE="$HOME/.config/kitty/kitty.conf"

# Check which pattern is currently uncommented
if grep -q "^[^#]*$FONT_MAIN" "$FILE"; then
    # Pattern1 is active, so comment it and uncomment pattern2
    sed -i "s/^[^#]*$FONT_MAIN/#&/" "$FILE"
    sed -i "s/^#\($FONT_PX\)/\1/" "$FILE"
elif grep -q "^[^#]*$FONT_PX" "$FILE"; then
    # Pattern2 is active, so comment it and uncomment pattern1
    sed -i "s/^[^#]*$FONT_PX/#&/" "$FILE"
    sed -i "s/^#\($FONT_MAIN\)/\1/" "$FILE"
else
    echo "Neither option is currently active, or they are both commented."
fi

killall -s SIGUSR1 kitty
