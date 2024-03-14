.class public final synthetic LW1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/f;->a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iput-object p2, p0, LW1/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LW1/f;->a:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    iget-object p0, p0, LW1/f;->b:Landroid/content/Context;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
