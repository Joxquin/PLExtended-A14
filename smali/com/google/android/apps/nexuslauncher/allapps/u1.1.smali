.class public final Lcom/google/android/apps/nexuslauncher/allapps/u1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/u1;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/u1;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->resetSearch()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/u1;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method
