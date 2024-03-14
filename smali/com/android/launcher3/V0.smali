.class public final synthetic Lcom/android/launcher3/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Workspace;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/V0;->a:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/V0;->b:I

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    sget v0, Lcom/android/launcher3/Workspace;->d:I

    iget-object v0, p0, Lcom/android/launcher3/V0;->a:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget p0, p0, Lcom/android/launcher3/V0;->b:I

    if-ne v1, p0, :cond_0

    iget-object p0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x1

    const-string v1, "widget is removed in response to widget remove broadcast"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
