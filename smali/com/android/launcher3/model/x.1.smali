.class public final synthetic Lcom/android/launcher3/model/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/model/x;->a:I

    iput-object p2, p0, Lcom/android/launcher3/model/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/x;->a:I

    iget-object p0, p0, Lcom/android/launcher3/model/x;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->a(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->b(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_2
    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->g(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->d(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_0
    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->i(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
