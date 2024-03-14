.class public final Landroidx/fragment/app/f0;
.super Landroidx/activity/p;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/fragment/app/p0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f0;->d:Landroidx/fragment/app/p0;

    invoke-direct {p0}, Landroidx/activity/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/f0;->d:Landroidx/fragment/app/p0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->x(Z)Z

    iget-object v0, p0, Landroidx/fragment/app/p0;->h:Landroidx/fragment/app/f0;

    iget-boolean v0, v0, Landroidx/activity/p;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->O()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/p0;->g:Landroidx/activity/s;

    invoke-virtual {p0}, Landroidx/activity/s;->b()V

    :goto_0
    return-void
.end method
