.class public final synthetic Lcom/android/launcher3/util/b;
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

    iput p1, p0, Lcom/android/launcher3/util/b;->a:I

    iput-object p2, p0, Lcom/android/launcher3/util/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/util/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/DisplayController;->a(Lcom/android/launcher3/util/DisplayController;Landroid/content/Intent;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/util/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
