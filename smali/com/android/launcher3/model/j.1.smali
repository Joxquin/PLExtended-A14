.class public final synthetic Lcom/android/launcher3/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/model/j;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/j;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/model/j;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->b(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/model/j;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->c(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
