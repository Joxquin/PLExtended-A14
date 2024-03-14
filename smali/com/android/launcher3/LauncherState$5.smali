.class final Lcom/android/launcher3/LauncherState$5;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "SourceFile"


# instance fields
.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$quarterPageSpacing:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;F)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final getPageTranslation(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p0, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    neg-float p0, p0

    :cond_3
    return p0
.end method
