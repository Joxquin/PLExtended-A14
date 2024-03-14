.class public final synthetic Lcom/android/launcher3/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/N0;->a:I

    iput p1, p0, Lcom/android/launcher3/N0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    iget p1, p0, Lcom/android/launcher3/N0;->a:I

    const/4 v0, 0x1

    iget p0, p0, Lcom/android/launcher3/N0;->b:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lcom/android/launcher3/Workspace;->d:I

    if-eqz p2, :cond_0

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :goto_1
    sget p1, Lcom/android/launcher3/Workspace;->d:I

    instance-of p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
