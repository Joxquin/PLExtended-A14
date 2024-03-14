.class abstract Lcom/android/quickstep/interaction/TutorialFragment;
.super Lcom/android/quickstep/interaction/GestureSandboxFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final COMPLETED_TUTORIAL_STEPS_PREFERENCE_KEY:Ljava/lang/String; = "pref_completedTutorialSteps"

.field private static final LOG_TAG:Ljava/lang/String; = "TutorialFragment"

.field private static final TUTORIAL_SKIPPED_PREFERENCE_KEY:Ljava/lang/String; = "pref_gestureTutorialSkipped"


# instance fields
.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

.field private mEdgeGestureVideoView:Landroid/widget/ImageView;

.field mFakePreviousTaskView:Landroid/view/View;

.field mFingerDotView:Landroid/view/View;

.field private mFragmentStopped:Z

.field private final mFromTutorialMenu:Z

.field private mGestureAnimation:Landroid/animation/Animator;

.field mGestureComplete:Z

.field private mIntroductionShown:Z

.field private mIsFoldable:Z

.field private mIsLargeScreen:Z

.field mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

.field mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

.field mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

.field mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFromTutorialMenu:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/interaction/TutorialFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/interaction/TutorialFragment;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private static getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 2

    sget-object v0, Lcom/android/quickstep/interaction/TutorialFragment$4;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find an appropriate fragment for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TutorialFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;-><init>(Z)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;-><init>(Z)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setInsets(II)V

    return-object p2
.end method

.method public static newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 2

    invoke-static {p0, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {v0, p2}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>(Z)V

    sget-object p0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tutorial_type"

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "gesture_complete"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Landroidx/fragment/app/K;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public changeController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getControllerClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/TutorialController;->setTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->setGestureCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/y;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/y;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->fadeTaskViewAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->setGestureCompleted()V

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->transitToController()V

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->registerBackGestureAttemptCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->registerNavBarGestureAttemptCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->initializeFeedbackVideoView()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorialStep(Z)V

    return-void
.end method

.method public closeTutorialStep(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_gestureTutorialSkipped"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_SKIPPED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFromTutorialMenu:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->launchTutorialMenu()V

    return-void

    :cond_2
    invoke-super {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->close()V

    return-void
.end method

.method public continueTutorial()V
    .locals 4

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v3, "pref_completedTutorialSteps"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->close()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->continueTutorial()V

    return-void
.end method

.method public abstract createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
.end method

.method public createGestureAnimation()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getControllerClass()Ljava/lang/Class;
.end method

.method public getCurrentStep()I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getCurrentStep()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getDefaultTutorialType()Lcom/android/quickstep/interaction/TutorialController$TutorialType;
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method public getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGestureAnimation()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public getNumSteps()I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getNumSteps()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object p0
.end method

.method public initializeFeedbackVideoView()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSuccessFeedback()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionTitle()I

    move-result v2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionSubtitle()I

    move-result v3

    const-string v0, "Cannot show introduction feedback for tutorial step: "

    const-string v1, "TutorialFragment"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", no introduction feedback title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-ne v2, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", no introduction feedback subtitle"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController;->getSpokenIntroductionSubtitle()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IIIZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public isAtFinalStep()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getCurrentStep()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFoldable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsFoldable:Z

    return p0
.end method

.method public isGestureComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLargeScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    return p0
.end method

.method public abstract logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V
.end method

.method public abstract logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/K;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v0, "tutorial_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const-string v0, "gesture_complete"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    new-instance p1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    new-instance p1, Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsFoldable:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/K;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0d00e3

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0072

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/interaction/RootSandboxLayout;

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    new-instance p2, Lcom/android/quickstep/interaction/z;

    invoke-direct {p2, p0}, Lcom/android/quickstep/interaction/z;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    const p2, 0x7f0a018b

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    const p2, 0x7f0a0192

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    const p2, 0x7f0a018f

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFakePreviousTaskView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/K;->onDestroy()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->unregisterBackGestureAttemptCallback()V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->unregisterNavBarGestureAttemptCallback()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/K;->onResume()V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/TutorialFragment$3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "tutorial_type"

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "gesture_complete"

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "use_tutorial_menu"

    iget-boolean v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFromTutorialMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroidx/fragment/app/K;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/K;->onStop()V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->hideFeedback()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->pauseAndHideLottieAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public recreateFragment()Lcom/android/quickstep/interaction/GestureSandboxFragment;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getDefaultTutorialType()Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v1

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFromTutorialMenu:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/interaction/TutorialFragment;->newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;ZZ)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object p0

    return-object p0
.end method

.method public releaseFeedbackAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_2
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startSystemNavigationSetting()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GESTURE_NAVIGATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateEdgeAnimation()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimationResId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/quickstep/interaction/TutorialFragment$2;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public updateFeedbackAnimation()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateEdgeAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->createGestureAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/quickstep/interaction/TutorialFragment$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
