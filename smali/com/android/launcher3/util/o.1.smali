.class public final synthetic Lcom/android/launcher3/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/UserHandle;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/Set;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/util/o;->a:I

    iput-object p1, p0, Lcom/android/launcher3/util/o;->b:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/util/o;->c:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/o;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/util/o;->b:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/util/o;->c:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->a(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/o;->b:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/util/o;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->b(Landroid/os/UserHandle;Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
