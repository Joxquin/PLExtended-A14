.class public final Landroidx/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field public final d:Landroidx/activity/p;

.field public final synthetic e:Landroidx/activity/s;


# direct methods
.method public constructor <init>(Landroidx/activity/s;Landroidx/activity/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/r;->e:Landroidx/activity/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/r;->d:Landroidx/activity/p;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/r;->e:Landroidx/activity/s;

    iget-object v1, v0, Landroidx/activity/s;->b:Lkotlin/collections/j;

    iget-object v2, p0, Landroidx/activity/r;->d:Landroidx/activity/p;

    invoke-virtual {v1, v2}, Lkotlin/collections/j;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Landroidx/activity/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iput-object p0, v2, Landroidx/activity/p;->c:Lm3/a;

    invoke-virtual {v0}, Landroidx/activity/s;->c()V

    return-void
.end method
