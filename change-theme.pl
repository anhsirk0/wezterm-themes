#! /usr/bin/env perl

my $dir = $ENV{HOME} . "/.config/wezterm";
my $config = $ENV{HOME} . "/.config/wezterm/wezterm.lua";
my $theme;

my $config_content;
if (scalar @ARGV > 0) {
    my $theme_names = `grep name $dir/colors/*.toml`;
    $theme_names =~ s/[\n]*.*name = /\n/g;
    $theme_names =~ s/^[\n]//;
    my @all_themes = split "\n", $theme_names;

    ($theme) = grep /$ARGV[0]/i, @all_themes;
    if ($theme) {
        print "$theme theme selected\n";
    } else {
        print "No theme found for \'$ARGV[0]\'\n"; 
    }
}

# unless($theme) {
#     $theme = `ls $dir/colors | fzf`;
#     chomp $theme;
# }

if ($theme) {
    # read config
    open(FH, '<' . $config) or die "Unable to open\n";
    while(<FH>) {
        if ($_ =~ /color_scheme = / && !($_ =~ /--/)) {
            $config_content .= "    color_scheme = $theme,\n";
            next;
        }
        $config_content .= $_;
    }
    close(FH);
    # read config
    open(FH, '>' . $config) or die "Unable to open\n";
    print FH $config_content;
    close(FH);
} else {
    print "No theme selected\n";
}

