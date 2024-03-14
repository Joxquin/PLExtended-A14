.class public final synthetic Lcom/android/launcher3/icons/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/icons/k;->a:I

    iput-object p2, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/icons/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/ComponentWithLabel;

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
