.class final Lcom/android/launcher3/model/ModelWriter$1;
.super Lcom/android/launcher3/model/ModelWriter$ModelTask;
.source "SourceFile"


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$ModelTask;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    return-void
.end method


# virtual methods
.method public final runImpl()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
