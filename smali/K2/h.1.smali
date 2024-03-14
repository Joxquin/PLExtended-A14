.class public final synthetic LK2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

.field public final synthetic c:Landroid/content/ContentResolver;

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;Landroid/content/ContentResolver;IFLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    iput p7, p0, LK2/h;->a:I

    iput-object p1, p0, LK2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iput-object p2, p0, LK2/h;->c:Landroid/content/ContentResolver;

    iput p3, p0, LK2/h;->d:I

    iput p4, p0, LK2/h;->e:F

    iput-object p5, p0, LK2/h;->f:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, LK2/h;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LK2/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, LK2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iget-object v3, p0, LK2/h;->c:Landroid/content/ContentResolver;

    iget v4, p0, LK2/h;->d:I

    iget v5, p0, LK2/h;->e:F

    iget-object v6, p0, LK2/h;->f:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, LK2/h;->g:Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/net/Uri;

    iget-object p0, v2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->f:Ljava/util/Map;

    new-instance v0, LK2/h;

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LK2/h;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;Landroid/content/ContentResolver;IFLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;I)V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/k;

    return-object p0

    :goto_0
    iget-object v0, p0, LK2/h;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    iget-object v4, p0, LK2/h;->c:Landroid/content/ContentResolver;

    iget v3, p0, LK2/h;->d:I

    iget v2, p0, LK2/h;->e:F

    iget-object v6, p0, LK2/h;->f:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, LK2/h;->g:Ljava/lang/ref/WeakReference;

    move-object v5, p1

    check-cast v5, Landroid/net/Uri;

    sget p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->m:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LK2/k;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LK2/k;-><init>(FILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    new-instance p1, LK2/m;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->l:LK2/l;

    invoke-direct {p1, v0}, LK2/m;-><init>(LK2/l;)V

    filled-new-array {p0}, [LK2/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
