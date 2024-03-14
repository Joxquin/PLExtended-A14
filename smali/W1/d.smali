.class public final synthetic LW1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/d;->a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iput-object p2, p0, LW1/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LW1/d;->a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p0, p0, LW1/d;->b:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/app/appsearch/GlobalSearchSession;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "OmniEntryPoint"

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->e:Landroid/app/appsearch/GetByDocumentIdRequest;

    new-instance v5, LW1/e;

    const/4 p1, 0x2

    invoke-direct {v5, p1}, LW1/e;-><init>(I)V

    new-instance v6, LW1/h;

    invoke-direct {v6, v0, p0}, LW1/h;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V

    invoke-virtual/range {v1 .. v6}, Landroid/app/appsearch/GlobalSearchSession;->getByDocumentId(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method
