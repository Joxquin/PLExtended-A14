.class public Landroidx/fragment/app/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/q;
.implements Landroidx/lifecycle/V;
.implements Landroidx/lifecycle/h;
.implements La0/g;


# static fields
.field static final ACTIVITY_CREATED:I = 0x4

.field static final ATTACHED:I = 0x0

.field static final AWAITING_ENTER_EFFECTS:I = 0x6

.field static final AWAITING_EXIT_EFFECTS:I = 0x3

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = -0x1

.field static final RESUMED:I = 0x7

.field static final STARTED:I = 0x5

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field static final VIEW_CREATED:I = 0x2


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/G;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mBeingSaved:Z

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/p0;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDefaultFactory:Landroidx/lifecycle/Q;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/p0;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/W;

.field mInLayout:Z

.field mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/s;

.field mMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;

.field mParentFragment:Landroidx/fragment/app/K;

.field mPerformedCreateView:Z

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field public mPreviousWho:Ljava/lang/String;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field private final mSavedStateAttachListener:Landroidx/fragment/app/H;

.field mSavedStateRegistryController:La0/f;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/K;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/K0;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/y;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/K;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/K;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 6
    new-instance v0, Landroidx/fragment/app/q0;

    invoke-direct {v0}, Landroidx/fragment/app/q0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    .line 9
    new-instance v0, Landroidx/fragment/app/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/K;I)V

    iput-object v0, p0, Landroidx/fragment/app/K;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/K;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/y;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0, p0}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/K;)V

    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedStateAttachListener:Landroidx/fragment/app/H;

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/K;->initLifecycle()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/K;-><init>()V

    .line 17
    iput p1, p0, Landroidx/fragment/app/K;->mContentLayoutId:I

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/K;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->lambda$performCreateView$0()V

    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/G;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/G;

    invoke-direct {v0}, Landroidx/fragment/app/G;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    return-object p0
.end method

.method private getMinimumMaxLifecycleState()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->e:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    invoke-direct {p0}, Landroidx/fragment/app/K;->getMinimumMaxLifecycleState()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method private getTargetFragment(Z)Landroidx/fragment/app/K;
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, LT/c;->a:LT/b;

    .line 3
    new-instance p1, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-direct {p1, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/K;)V

    .line 4
    invoke-static {p1}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 5
    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v0

    .line 6
    iget-object v1, v0, LT/b;->a:Ljava/util/Set;

    .line 7
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->k:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-static {v0, v1, v2}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v0, p1}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    if-eqz p1, :cond_1

    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p1, p0}, Landroidx/fragment/app/p0;->A(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private initLifecycle()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    new-instance v0, La0/f;

    invoke-direct {v0, p0}, La0/f;-><init>(La0/g;)V

    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedStateRegistryController:La0/f;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/K;->mDefaultFactory:Landroidx/lifecycle/Q;

    iget-object v0, p0, Landroidx/fragment/app/K;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/K;->mSavedStateAttachListener:Landroidx/fragment/app/H;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedStateAttachListener:Landroidx/fragment/app/H;

    invoke-direct {p0, v0}, Landroidx/fragment/app/K;->registerOnPreAttachListener(Landroidx/fragment/app/H;)V

    :cond_0
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/K;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/K;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/K;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/K;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 3
    invoke-static {p0, p1}, Landroidx/fragment/app/h0;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/K;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/fragment/app/K;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": calling Fragment constructor caused an exception"

    .line 8
    invoke-static {v1, p1, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 10
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": could not find Fragment constructor"

    .line 11
    invoke-static {v1, p1, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 13
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 14
    invoke-static {v1, p1, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 16
    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 17
    invoke-static {v1, p1, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private lambda$performCreateView$0()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v1, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/K0;->h:La0/f;

    invoke-virtual {v0, v1}, La0/f;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method private prepareCallInternal(Lc/b;Ln/a;Landroidx/activity/result/c;)Landroidx/activity/result/d;
    .locals 8

    iget v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroidx/fragment/app/F;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/F;-><init>(Landroidx/fragment/app/K;Ln/a;Ljava/util/concurrent/atomic/AtomicReference;Lc/b;Landroidx/activity/result/c;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/K;->registerOnPreAttachListener(Landroidx/fragment/app/H;)V

    new-instance p0, Landroidx/fragment/app/x;

    invoke-direct {p0, v0}, Landroidx/fragment/app/x;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    invoke-static {p2, p0, p3}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private registerOnPreAttachListener(Landroidx/fragment/app/H;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/K;->mState:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/H;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private restoreViewState()V
    .locals 3

    const/4 v0, 0x3

    .line 22
    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    .line 26
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/K;->restoreViewState(Landroid/os/Bundle;)V

    .line 28
    :cond_2
    iput-object v1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public callStartTransitionListener(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/G;->u:Z

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/U0;->k()V

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    new-instance p1, Landroidx/fragment/app/A;

    invoke-direct {p1, v0}, Landroidx/fragment/app/A;-><init>(Landroidx/fragment/app/U0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/U0;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public createFragmentContainer()Landroidx/fragment/app/U;
    .locals 1

    new-instance v0, Landroidx/fragment/app/C;

    invoke-direct {v0, p0}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/K;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/K;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/K;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/K;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/K;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/K;->getTargetFragment(Z)Landroidx/fragment/app/K;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/K;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopDirection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getPopDirection()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getEnterAnim()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getEnterAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getExitAnim()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getExitAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getPopEnterAnim()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getPopEnterAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getPopExitAnim()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getPopExitAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0}, LW/a;->a(Landroidx/lifecycle/q;)LW/e;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, LW/e;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const-string v0, "  "

    invoke-static {p1, v0}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/p0;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/K;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/A0;->c(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p0

    return-object p0
.end method

.method public generateActivityResultKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragment_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_rq#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/K;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/P;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/W;->d:Landroid/app/Activity;

    check-cast p0, Landroidx/fragment/app/P;

    :goto_0
    return-object p0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/G;->p:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/G;->o:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAnimatingAway()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/p0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    :goto_0
    return-object p0
.end method

.method public getDefaultViewModelCreationExtras()LV/b;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, LV/d;

    invoke-direct {v1}, LV/d;-><init>()V

    iget-object v2, v1, LV/b;->a:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v3, Landroidx/lifecycle/O;->a:Landroidx/lifecycle/O;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroidx/lifecycle/I;->a:Landroidx/lifecycle/H;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/I;->b:Landroidx/lifecycle/H;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/lifecycle/I;->c:Landroidx/lifecycle/H;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/Q;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/K;->mDefaultFactory:Landroidx/lifecycle/Q;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Landroidx/lifecycle/L;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/L;-><init>(Landroid/app/Application;La0/g;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/K;->mDefaultFactory:Landroidx/lifecycle/Q;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/K;->mDefaultFactory:Landroidx/lifecycle/Q;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnterAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->b:I

    return p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public getEnterTransitionCallback()LB/l;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->q:LB/l;

    return-object p0
.end method

.method public getExitAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->c:I

    return p0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public getExitTransitionCallback()LB/l;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->r:LB/l;

    return-object p0
.end method

.method public getFocusedView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->t:Landroid/view/View;

    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/p0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    return-object p0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/W;->e()Landroidx/fragment/app/P;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/K;->mFragmentId:I

    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/K;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/K;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/W;->f()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    .line 6
    iget-object p0, p0, Landroidx/fragment/app/p0;->f:Landroidx/fragment/app/Y;

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLifecycle()Landroidx/lifecycle/m;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    return-object p0
.end method

.method public getLoaderManager()LW/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LW/a;->a(Landroidx/lifecycle/q;)LW/e;

    move-result-object p0

    return-object p0
.end method

.method getNextTransition()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->f:I

    return p0
.end method

.method public final getParentFragment()Landroidx/fragment/app/K;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    return-object p0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/p0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopDirection()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/G;->a:Z

    return p0
.end method

.method public getPopEnterAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->d:I

    return p0
.end method

.method public getPopExitAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->e:I

    return p0
.end method

.method public getPostOnViewCreatedAlpha()F
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/G;->s:F

    return p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/G;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/K;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getRetainInstance()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LT/c;->a:LT/b;

    new-instance v0, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/K;)V

    invoke-static {v0}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->i:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    invoke-static {v1, v2, v3}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/K;->mRetainInstance:Z

    return p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/G;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/K;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSavedStateRegistry()La0/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mSavedStateRegistryController:La0/f;

    iget-object p0, p0, La0/f;->b:La0/e;

    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/G;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/G;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/K;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSharedElementSourceNames()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/G;->g:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSharedElementTargetNames()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/G;->h:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/K;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/K;->getTargetFragment(Z)Landroidx/fragment/app/K;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LT/c;->a:LT/b;

    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;-><init>(Landroidx/fragment/app/K;)V

    invoke-static {v0}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->k:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    invoke-static {v1, v2, v3}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_0
    iget p0, p0, Landroidx/fragment/app/K;->mTargetRequestCode:I

    return p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUserVisibleHint()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/q;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/x;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/U;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/fragment/app/K;->getMinimumMaxLifecycleState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iget-object v0, v0, Landroidx/fragment/app/u0;->f:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/U;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/U;

    invoke-direct {v1}, Landroidx/lifecycle/U;-><init>()V

    iget-object p0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOptionsMenu()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method initState()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/K;->initLifecycle()V

    iget-object v0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/K;->mPreviousWho:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mAdded:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mRemoving:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mInLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mRestored:Z

    iput v0, p0, Landroidx/fragment/app/K;->mBackStackNesting:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    new-instance v2, Landroidx/fragment/app/q0;

    invoke-direct {v2}, Landroidx/fragment/app/q0;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iput-object v1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iput v0, p0, Landroidx/fragment/app/K;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/K;->mContainerId:I

    iput-object v1, p0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mDetached:Z

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mAdded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDetached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mDetached:Z

    return p0
.end method

.method public final isHidden()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->isHidden()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method final isInBackStack()Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/K;->mBackStackNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mInLayout:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->isMenuVisible()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method isPostponed()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/G;->u:Z

    return p0
.end method

.method public final isRemoving()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/K;->mRemoving:Z

    return p0
.end method

.method public final isResumed()Z
    .locals 1

    iget p0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStateSaved()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/p0;->L()Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->N()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " resultCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/W;->d:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onAttach(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/K;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->restoreChildFragmentState()V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iget v0, p0, Landroidx/fragment/app/p0;->t:I

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v0, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v1, v0, Landroidx/fragment/app/u0;->i:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->t(I)V

    :cond_1
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireActivity()Landroidx/fragment/app/P;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/K;->mContentLayoutId:I

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/W;->d:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/K;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->N()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/K;->restoreViewState()V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object p1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, p1, Landroidx/fragment/app/u0;->i:Z

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->t(I)V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAttach()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/H;

    invoke-virtual {v1}, Landroidx/fragment/app/H;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iget-object v1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->createFragmentContainer()Landroidx/fragment/app/U;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/p0;->b(Landroidx/fragment/app/W;Landroidx/fragment/app/U;Landroidx/fragment/app/K;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    iget-object v1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/K;->onAttach(Landroid/content/Context;)V

    iget-boolean v1, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v1, v1, Landroidx/fragment/app/p0;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/v0;

    invoke-interface {v2, p0}, Landroidx/fragment/app/v0;->a(Landroidx/fragment/app/K;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v1, Landroidx/fragment/app/u0;->i:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onAttach()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->i(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->N()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/K;->mCalled:Z

    iget-object v1, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    new-instance v2, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/K;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mIsCreated:Z

    iget-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onCreate()"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/K;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/p0;->j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->N()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mPerformedCreateView:Z

    new-instance v1, Landroidx/fragment/app/K0;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object v2

    new-instance v3, Landroidx/fragment/app/w;

    invoke-direct {v3, p0}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/K;)V

    invoke-direct {v1, p0, v2, v3}, Landroidx/fragment/app/K0;-><init>(Landroidx/fragment/app/K;Landroidx/lifecycle/U;Landroidx/fragment/app/w;)V

    iput-object v1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/K;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-virtual {p1}, Landroidx/fragment/app/K0;->b()V

    iget-object p1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-static {p1, p2}, Landroidx/lifecycle/W;->b(Landroid/view/View;Landroidx/lifecycle/q;)V

    iget-object p1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0a03ca

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-static {p1, p2}, La0/h;->a(Landroid/view/View;La0/g;)V

    iget-object p1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/y;

    iget-object p0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/y;->h(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object p1, p1, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method performDestroy()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()V

    iget-object v0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mIsCreated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onDestroy()V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroy()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    invoke-virtual {v0}, Landroidx/fragment/app/K0;->b()V

    iget-object v0, v0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    iget-object v0, v0, Landroidx/lifecycle/s;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/K0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_1
    iput v1, p0, Landroidx/fragment/app/K;->mState:I

    iput-boolean v2, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onDestroyView()V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, LW/a;->a(Landroidx/lifecycle/q;)LW/e;

    move-result-object v0

    iget-object v0, v0, LW/e;->b:LW/d;

    iget-object v0, v0, LW/d;->d:Lq/n;

    iget v1, v0, Lq/n;->f:I

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lq/n;->e:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, LW/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Landroidx/fragment/app/K;->mPerformedCreateView:Z

    return-void

    :cond_3
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/K;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iget-boolean v1, v0, Landroidx/fragment/app/p0;->H:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()V

    new-instance v0, Landroidx/fragment/app/q0;

    invoke-direct {v0}, Landroidx/fragment/app/q0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDetach()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/K;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method performLowMemory()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onLowMemory()V

    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->o(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->p(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/K0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onPause()V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onPause()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->s(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public performPrimaryNavigationFragmentChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/fragment/app/p0;->K(Landroidx/fragment/app/K;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/K;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/K;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/K;->onPrimaryNavigationFragmentChanged(Z)V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->d0()V

    iget-object v0, p0, Landroidx/fragment/app/p0;->x:Landroidx/fragment/app/K;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->q(Landroidx/fragment/app/K;)V

    :cond_1
    return-void
.end method

.method performResume()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->N()V

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->x(Z)Z

    const/4 v0, 0x7

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onResume()V

    iget-boolean v2, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v2, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v2, v2, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v2, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v1, v2, Landroidx/fragment/app/u0;->i:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onResume()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method performStart()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->N()V

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->x(Z)Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onStart()V

    iget-boolean v2, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v2, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v2, v2, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v1, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v2, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v1, v2, Landroidx/fragment/app/u0;->i:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onStart()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/p0;->G:Z

    iget-object v2, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v1, v2, Landroidx/fragment/app/u0;->i:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iput v1, p0, Landroidx/fragment/app/K;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->onStop()V

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onStop()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performViewCreated()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/K;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/G;->u:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/G;->u:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/K;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/K;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final registerForActivityResult(Lc/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/D;

    invoke-direct {v0, p0}, Landroidx/fragment/app/D;-><init>(Landroidx/fragment/app/K;)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/K;->prepareCallInternal(Lc/b;Ln/a;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method

.method public final registerForActivityResult(Lc/b;Landroidx/activity/result/h;Landroidx/activity/result/c;)Landroidx/activity/result/d;
    .locals 1

    .line 2
    new-instance v0, Landroidx/fragment/app/E;

    invoke-direct {v0, p2}, Landroidx/fragment/app/E;-><init>(Landroidx/activity/result/h;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/fragment/app/K;->prepareCallInternal(Lc/b;Ln/a;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    iget-object v1, v0, Landroidx/fragment/app/p0;->C:Landroidx/activity/result/e;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/fragment/app/m0;

    iget-object p0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-direct {v1, p0, p2}, Landroidx/fragment/app/m0;-><init>(Ljava/lang/String;I)V

    iget-object p0, v0, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p0, v0, Landroidx/fragment/app/p0;->C:Landroidx/activity/result/e;

    invoke-virtual {p0, p1}, Landroidx/activity/result/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    invoke-static {p2, p0, v0}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/P;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to an activity."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " does not have any arguments."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/p0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object p0

    return-object p0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a host."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/K;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragment()Landroidx/fragment/app/K;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fragment "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, " is not attached to any Fragment or host"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreChildFragmentState()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "childFragmentManager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->T(Landroid/os/Parcelable;)V

    iget-object p0, p0, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v1, Landroidx/fragment/app/u0;->i:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    :cond_0
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/K;->mCalled:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/K;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 6
    iget-boolean p1, p0, Landroidx/fragment/app/K;->mCalled:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/K0;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 10
    invoke-static {v0, p0, v1}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {p1, p0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/G;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/G;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnimations(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/G;->b:I

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/G;->c:I

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/G;->d:I

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput p4, p0, Landroidx/fragment/app/G;->e:I

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(LB/l;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->q:LB/l;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->i:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(LB/l;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->r:LB/l;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->k:Ljava/lang/Object;

    return-void
.end method

.method public setFocusedView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->t:Landroid/view/View;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    invoke-virtual {p0}, Landroidx/fragment/app/W;->h()V

    :cond_0
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/J;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/J;->d:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mMenuVisible:Z

    iget-boolean p1, p0, Landroidx/fragment/app/K;->mHasMenu:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    invoke-virtual {p0}, Landroidx/fragment/app/W;->h()V

    :cond_0
    return-void
.end method

.method public setNextTransition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    iput p1, p0, Landroidx/fragment/app/G;->f:I

    return-void
.end method

.method public setPopDirection(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/G;->a:Z

    return-void
.end method

.method public setPostOnViewCreatedAlpha(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/G;->s:F

    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->l:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LT/c;->a:LT/b;

    new-instance v0, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;-><init>(Landroidx/fragment/app/K;)V

    invoke-static {v0}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->i:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    invoke-static {v1, v2, v3}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mRetainInstance:Z

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/u0;->c(Landroidx/fragment/app/K;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/K;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mRetainInstanceChangedWhileDetached:Z

    :goto_0
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->j:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->m:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    iput-object p1, p0, Landroidx/fragment/app/G;->g:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/fragment/app/G;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/G;->n:Ljava/lang/Object;

    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/K;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, LT/c;->a:LT/b;

    new-instance v0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;-><init>(Landroidx/fragment/app/K;Landroidx/fragment/app/K;I)V

    invoke-static {v0}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->k:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    invoke-static {v1, v2, v3}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment "

    const-string v0, " must share the same FragmentManager to be set as a target fragment"

    invoke-static {p2, p1, v0}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/fragment/app/K;->getTargetFragment(Z)Landroidx/fragment/app/K;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-nez p1, :cond_6

    iput-object v1, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    goto :goto_3

    :cond_7
    iput-object v1, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    :goto_3
    iput p2, p0, Landroidx/fragment/app/K;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LT/c;->a:LT/b;

    new-instance v0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;-><init>(Landroidx/fragment/app/K;Z)V

    invoke-static {v0}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->j:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    invoke-static {v1, v2, v3}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroidx/fragment/app/K;->mState:I

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mIsCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object v4

    iget-object v5, v4, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-boolean v6, v5, Landroidx/fragment/app/K;->mDeferStart:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Landroidx/fragment/app/p0;->b:Z

    if-eqz v6, :cond_1

    iput-boolean v1, v0, Landroidx/fragment/app/p0;->I:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, v5, Landroidx/fragment/app/K;->mDeferStart:Z

    invoke-virtual {v4}, Landroidx/fragment/app/z0;->k()V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    iget v0, p0, Landroidx/fragment/app/K;->mState:I

    if-ge v0, v3, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/K;->mDeferStart:Z

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/K;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/W;->g(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, LB/c;->a:Ljava/lang/Object;

    .line 4
    iget-object p0, v0, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 6
    invoke-static {p2, p0, v0}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/K;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/fragment/app/p0;->A:Landroidx/activity/result/e;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Landroidx/fragment/app/m0;

    iget-object p0, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-direct {v1, p0, p2}, Landroidx/fragment/app/m0;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object p0, v0, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const-string p0, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 7
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_0
    iget-object p0, v0, Landroidx/fragment/app/p0;->A:Landroidx/activity/result/e;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/activity/result/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p0, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 11
    sget-object p2, LB/c;->a:Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    .line 15
    invoke-static {p2, p0, p3}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v7, p7

    iget-object v4, v0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    const-string v5, "Fragment "

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    const-string v8, "FragmentManager"

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " received the following in startIntentSenderForResult() requestCode: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " IntentSender: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " fillInIntent: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " options: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v6

    iget-object v9, v6, Landroidx/fragment/app/p0;->B:Landroidx/activity/result/e;

    if-eqz v9, :cond_5

    if-eqz v7, :cond_3

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ActivityOptions "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " were added to fillInIntent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v9, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    const-string v7, "intentSender"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroidx/activity/result/k;

    move v9, p4

    move/from16 v10, p5

    invoke-direct {v7, p1, v3, p4, v10}, Landroidx/activity/result/k;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    new-instance v1, Landroidx/fragment/app/m0;

    iget-object v3, v0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-direct {v1, v3, p2}, Landroidx/fragment/app/m0;-><init>(Ljava/lang/String;I)V

    iget-object v2, v6, Landroidx/fragment/app/p0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "is launching an IntentSender for result "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v6, Landroidx/fragment/app/p0;->B:Landroidx/activity/result/e;

    invoke-virtual {v0, v7}, Landroidx/activity/result/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v9, p4

    move/from16 v10, p5

    iget-object v0, v6, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    iget-object v0, v0, Landroidx/fragment/app/W;->d:Landroid/app/Activity;

    sget-object v4, LB/c;->a:Ljava/lang/Object;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " not attached to Activity"

    invoke-static {v5, p0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/K;->mAnimationInfo:Landroidx/fragment/app/G;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/G;->u:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/fragment/app/K;->ensureAnimationInfo()Landroidx/fragment/app/G;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/G;->u:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iget-object v0, v0, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    new-instance v1, Landroidx/fragment/app/y;

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/K;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/K;->callStartTransitionListener(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/K;->mFragmentId:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/K;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
