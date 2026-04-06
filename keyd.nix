{ config, pkgs, ... }:
{
  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "0001:0001:09b4e68d" ]; # narrow this via `keyd monitor`
      settings = {

        # ================================================================
        # MAIN LAYER
        # System layout: DE QWERTZ. Key names = physical QWERTY scancodes.
        # S- = shift on DE layout. G- = AltGr on DE layout.
        # ================================================================
        main = {

          # --- Thumb modifier remaps ---
          leftalt = "overload(control, noop)";
          leftmeta = "overload(alt, noop)";
          leftcontrol = "rightmeta";
          rightalt = "overload(symbols-layer, noop)";

          tab = "enter";
          capslock = "tab";

          # Copilot key, see
          # https://github.com/rvaiya/keyd/issues/825#issuecomment-3979364570
          "leftmeta+leftshift" = "overload(shift, noop)";

          # --- Top alpha row (QWERTY positions → Bone-like layout) ---
          q = "k";
          w = "z";
          e = "o";
          r = "S-7"; # /
          t = "S-4"; # $
          u = "f";
          i = "c";
          o = "l";
          p = "p";
          leftbrace = "q";
          rightbrace = "y";

          # --- Home row ---
          a = "h";
          s = "i";
          d = "e";
          f = "a";
          g = "u";
          j = "d";
          k = "s";
          l = "t";
          semicolon = "n";
          apostrophe = "r";
          backslash = "v";

          # --- Bottom row ---
          "102nd" = "j";
          z = "S-minus"; # ?
          x = "S-8"; # (
          c = "S-9"; # )
          v = "slash"; # -
          b = "backspace";
          m = "w";
          comma = "g";
          dot = "m";
          slash = "b";
          rightshift = "x";
        };

        shift = {
          r = "S-5"; # %
          t = "macro(G-q)"; # @
          z = "G-rightbrace"; # ~
          x = "macro(G-102nd)"; # |
          c = "macro(S-equal space)"; # `
          v = "S-grave"; # °
        };

        symbols-layer = {
          # --- Top row ---
          q = "G-8"; # [
          w = "S-1"; # !
          e = "S-0"; # =
          r = "102nd"; # <
          t = "S-slash"; # _
          u = "S-6"; # &
          i = "S-2"; # "
          o = "S-comma"; # ;
          p = "rightbrace"; # +
          leftbrace = "G-9"; # ]
          rightbrace = "noop";

          # --- Home row ---
          a = "4";
          s = "2";
          d = "comma"; # ,
          f = "0";
          g = "G-7"; # {
          j = "G-0"; # }
          k = "1";
          l = "dot"; # .
          semicolon = "3";
          apostrophe = "5";
          backslash = "macro(grave space)"; # ^

          # --- Bottom row ---
          "102nd" = "6";
          z = "8";
          x = "G-minus"; # \
          c = "S-backslash"; # '
          v = "backslash"; # #
          b = "noop";
          m = "S-dot"; # :
          comma = "S-rightbrace"; # *
          dot = "S-102nd"; # >
          slash = "9";
          rightshift = "7";
        };
      };
    };
  };
}
