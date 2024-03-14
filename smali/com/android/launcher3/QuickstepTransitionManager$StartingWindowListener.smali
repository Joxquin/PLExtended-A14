.class final Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;
.super Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mBackgroundColor:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->getBackgroundColor()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final onTaskLaunching(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->f(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mBackgroundColor:I

    return-void
.end method

.method public final setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    return-void
.end method
