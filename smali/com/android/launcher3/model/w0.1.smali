.class public final synthetic Lcom/android/launcher3/model/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Collection;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/model/w0;->a:I

    iput-object p2, p0, Lcom/android/launcher3/model/w0;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/w0;->a:I

    iget-object p0, p0, Lcom/android/launcher3/model/w0;->b:Ljava/util/Collection;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/p;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/p;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Lcom/android/launcher3/util/n;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    return-void

    :goto_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItemsModified(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
