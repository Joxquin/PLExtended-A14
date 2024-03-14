.class public final synthetic Lcom/android/launcher3/model/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Iterable;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/model/T;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/T;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/model/T;->c:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/T;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/T;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/model/T;->c:Ljava/lang/Iterable;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/T;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/model/T;->c:Ljava/lang/Iterable;

    check-cast p0, Lcom/android/launcher3/util/IntArray;

    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->u(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/model/U;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/model/U;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
