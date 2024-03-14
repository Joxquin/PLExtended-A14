.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final synthetic b:Landroid/app/search/Query;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/p;

.field public final synthetic d:J

.field public final synthetic e:[[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;J[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->b:Landroid/app/search/Query;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->c:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iput-wide p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->d:J

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->e:[[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->a:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->b:Landroid/app/search/Query;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->c:Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->d:J

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E0;->e:[[B

    move-object v2, p1

    check-cast v2, Lf2/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "WebAppSearchLogging"

    const-string v6, "Got zero state suggestions from AppSearch"

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    aget-object v6, p0, p1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b(Landroid/app/search/Query;Lf2/A;Lcom/google/android/apps/nexuslauncher/allapps/p;J[BZ)V

    return-void
.end method
