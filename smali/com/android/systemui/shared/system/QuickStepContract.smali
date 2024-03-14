.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_BACK_GESTURE_IN_SHADE:Z

.field public static final KEY_EXTRA_SYSUI_PROXY:Ljava/lang/String; = "extra_sysui_proxy"

.field public static final KEY_EXTRA_UNFOLD_ANIMATION_FORWARDER:Ljava/lang/String; = "extra_unfold_animation"

.field public static final KEY_EXTRA_UNLOCK_ANIMATION_CONTROLLER:Ljava/lang/String; = "unlock_animation"

.field public static final LAUNCHER_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.nexuslauncher.NexusLauncherActivity"

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field public static final SYSUI_STATE_A11Y_BUTTON_CLICKABLE:I = 0x10

.field public static final SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE:I = 0x20

.field public static final SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY:I = 0x20000

.field public static final SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED:I = 0x2000

.field public static final SYSUI_STATE_AWAKE:I = 0x10000000

.field public static final SYSUI_STATE_BACK_DISABLED:I = 0x400000

.field public static final SYSUI_STATE_BOUNCER_SHOWING:I = 0x8

.field public static final SYSUI_STATE_BUBBLES_EXPANDED:I = 0x4000

.field public static final SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED:I = 0x800000

.field public static final SYSUI_STATE_DEVICE_DOZING:I = 0x200000

.field public static final SYSUI_STATE_DEVICE_DREAMING:I = 0x8000000

.field public static final SYSUI_STATE_DIALOG_SHOWING:I = 0x8000

.field public static final SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE:I = 0x4000000

.field public static final SYSUI_STATE_HOME_DISABLED:I = 0x100

.field public static final SYSUI_STATE_IME_SHOWING:I = 0x40000

.field public static final SYSUI_STATE_IME_SWITCHER_SHOWING:I = 0x100000

.field public static final SYSUI_STATE_IMMERSIVE_MODE:I = 0x1000000

.field public static final SYSUI_STATE_MAGNIFICATION_OVERLAP:I = 0x80000

.field public static final SYSUI_STATE_NAV_BAR_HIDDEN:I = 0x2

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED:I = 0x4

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE:I = 0x40000000

.field public static final SYSUI_STATE_ONE_HANDED_ACTIVE:I = 0x10000

.field public static final SYSUI_STATE_OVERVIEW_DISABLED:I = 0x80

.field public static final SYSUI_STATE_QUICK_SETTINGS_EXPANDED:I = 0x800

.field public static final SYSUI_STATE_SCREEN_PINNING:I = 0x1

.field public static final SYSUI_STATE_SEARCH_DISABLED:I = 0x400

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_GOING_AWAY:I = -0x80000000

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING:I = 0x40

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED:I = 0x200

.field public static final SYSUI_STATE_TRACING_ENABLED:I = 0x1000

.field public static final SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING:I = 0x2000000

.field public static final SYSUI_STATE_WAKEFULNESS_MASK:I = 0x30000000

.field public static final SYSUI_STATE_WAKEFULNESS_TRANSITION:I = 0x20000000

.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x10000000

.field public static final WAKEFULNESS_GOING_TO_SLEEP:I = 0x20000000

.field public static final WAKEFULNESS_WAKING:I = 0x30000000


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.shade_allow_back_gesture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackGestureDisabledMask(Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x42

    goto :goto_0

    :cond_0
    const/16 p0, 0x40

    :goto_0
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-nez v0, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    return p0
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "screen_pinned"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string v1, "overview_disabled"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "home_disabled"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    const-string v1, "search_disabled"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string v1, "navbar_hidden"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const-string v1, "notif_expanded"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const-string v1, "qs_visible"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "keygrd_visible"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_8

    const-string v1, "keygrd_occluded"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_8
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_9

    const-string v1, "bouncer_visible"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_9
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    const-string v1, "dialog_showing"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_a
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_b

    const-string v1, "a11y_click"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_c

    const-string v1, "a11y_long_click"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_c
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    const-string v1, "tracing"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_d
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    const-string v1, "asst_gesture_constrain"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_e
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_f

    const-string v1, "bubbles_expanded"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_f
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "one_handed_active"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_10
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "allow_gesture"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    const-string v1, "ime_visible"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_12
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    const-string v1, "magnification_overlap"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_13
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_14

    const-string v1, "ime_switcher_showing"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_14
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15

    const-string v1, "device_dozing"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_15
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_16

    const-string v1, "back_disabled"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_16
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    const-string v1, "bubbles_mange_menu_expanded"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_17
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_18

    const-string v1, "immersive_mode"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_18
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_19

    const-string v1, "vis_win_showing"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_19
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1a

    const-string v1, "freeform_active_in_desktop_mode"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1a
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1b

    const-string v1, "device_dreaming"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1b
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1c

    const-string v1, "wakefulness_transition"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1c
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1d

    const-string v1, "awake"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1d
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_1e

    const-string v1, "notif_visible"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1e
    const/high16 v1, -0x80000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_1f

    const-string p0, "keygrd_going_away"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1f
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .locals 0

    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 2

    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, -0x3

    :cond_0
    and-int/lit16 v0, p0, 0xc0b

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(IZ)Z
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, -0x3

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getBackGestureDisabledMask(Z)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLegacyMode(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method
