.class public final synthetic Lcom/android/quickstep/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/RecentTasksList;

.field public final synthetic e:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field public final synthetic f:Ljava/util/function/Consumer;

.field public final synthetic g:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o0;->d:Lcom/android/quickstep/RecentTasksList;

    iput-object p2, p0, Lcom/android/quickstep/o0;->e:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object p3, p0, Lcom/android/quickstep/o0;->f:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/quickstep/o0;->g:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/o0;->d:Lcom/android/quickstep/RecentTasksList;

    iget-object v1, p0, Lcom/android/quickstep/o0;->e:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-object v2, p0, Lcom/android/quickstep/o0;->f:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/o0;->g:Ljava/util/function/Predicate;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/RecentTasksList;->c(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method
