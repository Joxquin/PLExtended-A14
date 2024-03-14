.class public final Landroidx/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm3/a;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/activity/j;Landroidx/activity/c;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/o;->a:Lm3/a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/o;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/activity/o;->d:Ljava/util/List;

    return-void
.end method
