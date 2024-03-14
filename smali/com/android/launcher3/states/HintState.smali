.class public final Lcom/android/launcher3/states/HintState;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# static fields
.field private static final STATE_FLAGS:I = 0x4a


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget v0, Lcom/android/launcher3/states/HintState;->STATE_FLAGS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const p0, 0x3e19999a    # 0.15f

    return p0
.end method

.method public final getTransitionDuration(Landroid/content/Context;Z)I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const p1, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public final getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const p0, 0x7f04044e

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p0

    const/16 p1, 0x64

    invoke-static {p0, p1}, LE/a;->k(II)I

    move-result p0

    return p0
.end method
