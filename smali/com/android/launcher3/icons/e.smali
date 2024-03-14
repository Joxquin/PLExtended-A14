.class public final synthetic Lcom/android/launcher3/icons/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic c:Lcom/android/launcher3/model/data/ItemInfoWithIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/icons/e;->a:I

    iput-object p1, p0, Lcom/android/launcher3/icons/e;->b:Lcom/android/launcher3/icons/IconCache;

    iput-object p2, p0, Lcom/android/launcher3/icons/e;->c:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/icons/e;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/icons/e;->b:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/e;->c:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/icons/e;->b:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/e;->c:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast p0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
