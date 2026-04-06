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
          y = "f";
          u = "c";
          i = "l";
          o = "p";
          p = "q";
          leftbrace = "y";

          # --- Home row ---
          a = "h";
          s = "i";
          d = "e";
          f = "a";
          g = "u";
          h = "d";
          j = "s";
          k = "t";
          l = "n";
          semicolon = "r";
          apostrophe = "v";

          # --- Bottom row ---
          "102nd" = "j";
          z = "S-minus"; # ?
          x = "S-8"; # (
          c = "S-9"; # )
          v = "slash"; # -
          b = "backspace";
          n = "w";
          m = "g";
          comma = "m";
          dot = "b";
          slash = "x";
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
          y = "S-6"; # &
          u = "S-2"; # "
          i = "S-comma"; # ;
          o = "rightbrace"; # +
          p = "G-9"; # ]

          # --- Home row ---
          a = "4";
          s = "2";
          d = "comma"; # ,
          f = "0";
          g = "G-7"; # {
          h = "G-0"; # }
          j = "1";
          k = "dot"; # .
          l = "3";
          semicolon = "5";
          apostrophe = "macro(grave space)"; # ^

          # --- Bottom row ---
          "102nd" = "6";
          z = "8";
          x = "G-minus"; # \
          c = "S-backslash"; # '
          v = "backslash"; # #
          b = "noop";
          n = "S-dot"; # :
          m = "S-rightbrace"; # *
          comma = "S-102nd"; # >
          dot = "9";
          slash = "7";
        };
      };
    };
  };
}
