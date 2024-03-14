.class public final Lb0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/slice/Slice;

.field public final synthetic e:Lb0/j;


# direct methods
.method public constructor <init>(Lb0/j;Landroidx/slice/Slice;)V
    .locals 0

    iput-object p1, p0, Lb0/i;->e:Lb0/j;

    iput-object p2, p0, Lb0/i;->d:Landroidx/slice/Slice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb0/i;->e:Lb0/j;

    iget-object v0, v0, Lb0/j;->d:Lb0/l;

    iget-object v0, v0, Lb0/l;->c:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iget-object p0, p0, Lb0/i;->d:Landroidx/slice/Slice;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/r0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/r0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
