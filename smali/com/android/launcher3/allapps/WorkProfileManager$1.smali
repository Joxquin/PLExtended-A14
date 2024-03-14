.class final Lcom/android/launcher3/allapps/WorkProfileManager$1;
.super Landroidx/recyclerview/widget/q0;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

.field totalDelta:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/WorkProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/q0;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    :cond_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p2, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->this$0:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result p3

    neg-int p3, p3

    if-ge p1, p3, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager$1;->totalDelta:I

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getScrollThreshold()I

    move-result p1

    if-le p0, p1, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->shrink()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->extend()V

    :cond_4
    :goto_2
    return-void
.end method
