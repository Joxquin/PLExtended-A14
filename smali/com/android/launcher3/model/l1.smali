.class public final synthetic Lcom/android/launcher3/model/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/model/l1;->a:I

    iput-object p2, p0, Lcom/android/launcher3/model/l1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/l1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/model/l1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/WellbeingModel;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->a(Lcom/android/launcher3/model/WellbeingModel;Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/model/l1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/WellbeingModel;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/model/WellbeingModel;->f(Lcom/android/launcher3/model/WellbeingModel;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/model/l1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/WellbeingModel;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/launcher3/model/WellbeingModel;->c(Lcom/android/launcher3/model/WellbeingModel;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/model/l1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
