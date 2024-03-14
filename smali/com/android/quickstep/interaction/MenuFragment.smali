.class public final Lcom/android/quickstep/interaction/MenuFragment;
.super Lcom/android/quickstep/interaction/GestureSandboxFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->lambda$onCreateView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->HOME_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->OVERVIEW_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxFragment;->close()V

    return-void
.end method

.method private launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->launchTutorialStep(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0078

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a019d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/interaction/m;

    invoke-direct {p3, p0, v0}, Lcom/android/quickstep/interaction/m;-><init>(Lcom/android/quickstep/interaction/MenuFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a019a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/interaction/m;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/android/quickstep/interaction/m;-><init>(Lcom/android/quickstep/interaction/MenuFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a019f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/interaction/m;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lcom/android/quickstep/interaction/m;-><init>(Lcom/android/quickstep/interaction/MenuFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a019c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/interaction/m;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lcom/android/quickstep/interaction/m;-><init>(Lcom/android/quickstep/interaction/MenuFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "use_tutorial_menu"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "tutorial_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "gesture_complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/K;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public recreateFragment()Lcom/android/quickstep/interaction/GestureSandboxFragment;
    .locals 0

    new-instance p0, Lcom/android/quickstep/interaction/MenuFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/MenuFragment;-><init>()V

    return-object p0
.end method

.method public shouldDisableSystemGestures()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
