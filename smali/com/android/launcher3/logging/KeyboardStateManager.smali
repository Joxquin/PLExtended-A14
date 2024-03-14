.class public final Lcom/android/launcher3/logging/KeyboardStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mImeShownHeightPx:I

.field private mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

.field private mUpdatedTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->NO_IME_ACTION:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    iput-object v0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    iput p1, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mImeShownHeightPx:I

    return-void
.end method


# virtual methods
.method public final getImeShownHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mImeShownHeightPx:I

    return p0
.end method

.method public final getKeyboardState()Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    return-object p0
.end method

.method public final getLastUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mUpdatedTime:J

    return-wide v0
.end method

.method public final setImeHeight(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mImeShownHeightPx:I

    :cond_0
    return-void
.end method

.method public final setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mUpdatedTime:J

    iput-object p1, p0, Lcom/android/launcher3/logging/KeyboardStateManager;->mKeyboardState:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    return-void
.end method
