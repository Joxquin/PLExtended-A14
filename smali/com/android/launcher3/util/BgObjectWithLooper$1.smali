.class final Lcom/android/launcher3/util/BgObjectWithLooper$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic val$command:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/model/l1;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/util/BgObjectWithLooper$1;->val$command:Ljava/util/function/Consumer;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/BgObjectWithLooper$1;->val$command:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
