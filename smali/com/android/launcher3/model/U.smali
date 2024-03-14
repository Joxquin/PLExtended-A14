.class public final synthetic Lcom/android/launcher3/model/U;
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

    iput p1, p0, Lcom/android/launcher3/model/U;->a:I

    iput-object p2, p0, Lcom/android/launcher3/model/U;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/U;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/model/U;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/model/U;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntArray;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/model/U;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/model/U;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/model/U;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
