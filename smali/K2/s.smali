.class public final LK2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/f;


# static fields
.field public static final g:Z


# instance fields
.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/List;

.field public f:Ln1/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BcSmartspaceDataPlugin"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LK2/s;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LK2/s;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK2/s;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LK2/s;->f:Ln1/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    iget-object p0, p0, LK2/s;->f:Ln1/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ln1/d;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_0
    return-void
.end method

.method public final d(Ln1/e;)V
    .locals 1

    iget-object v0, p0, LK2/s;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, LK2/s;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ln1/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public final p(Ln1/e;)V
    .locals 0

    iget-object p0, p0, LK2/s;->d:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
