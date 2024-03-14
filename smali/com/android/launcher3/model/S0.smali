.class public final synthetic Lcom/android/launcher3/model/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/model/S0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/model/S0;->e:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p2, p0, Lcom/android/launcher3/model/S0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/launcher3/model/S0;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/S0;->e:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/S0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-interface {v3, v5}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/model/S0;->e:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/S0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-interface {v3, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
