.class final Lcom/android/launcher3/Workspace$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field final synthetic val$changedInfo:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace$9;->val$changedInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace$9;->val$changedInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/16 p0, 0x64

    iput p0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    check-cast p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
