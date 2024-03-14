.class public final synthetic Lcom/android/quickstep/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/RecentTasksList;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/function/Consumer;

.field public final synthetic h:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/n0;->d:Lcom/android/quickstep/RecentTasksList;

    iput p2, p0, Lcom/android/quickstep/n0;->e:I

    iput-boolean p3, p0, Lcom/android/quickstep/n0;->f:Z

    iput-object p4, p0, Lcom/android/quickstep/n0;->g:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/quickstep/n0;->h:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/n0;->d:Lcom/android/quickstep/RecentTasksList;

    iget v1, p0, Lcom/android/quickstep/n0;->e:I

    iget-boolean v2, p0, Lcom/android/quickstep/n0;->f:Z

    iget-object v3, p0, Lcom/android/quickstep/n0;->g:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/n0;->h:Ljava/util/function/Predicate;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/RecentTasksList;->a(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method
