.class public final Landroidx/fragment/app/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/D;->a:Landroidx/fragment/app/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/h;
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/D;->a:Landroidx/fragment/app/K;

    iget-object v0, p0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    instance-of v1, v0, Landroidx/activity/result/i;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/activity/result/i;

    invoke-interface {v0}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->requireActivity()Landroidx/fragment/app/P;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/l;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    :goto_0
    return-object p0
.end method
