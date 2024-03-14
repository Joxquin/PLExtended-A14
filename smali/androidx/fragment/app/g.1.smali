.class public final synthetic Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/fragment/app/S0;

.field public final synthetic e:Landroidx/fragment/app/S0;

.field public final synthetic f:Z

.field public final synthetic g:Lq/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/S0;Landroidx/fragment/app/S0;ZLq/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/g;->d:Landroidx/fragment/app/S0;

    iput-object p2, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/S0;

    iput-boolean p3, p0, Landroidx/fragment/app/g;->f:Z

    iput-object p4, p0, Landroidx/fragment/app/g;->g:Lq/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/g;->d:Landroidx/fragment/app/S0;

    iget-object v1, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/S0;

    iget-boolean v2, p0, Landroidx/fragment/app/g;->f:Z

    iget-object p0, p0, Landroidx/fragment/app/g;->g:Lq/f;

    const-string v3, "$lastInViews"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v1, v1, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    invoke-static {v0, v1, v2, p0}, Landroidx/fragment/app/C0;->a(Landroidx/fragment/app/K;Landroidx/fragment/app/K;ZLq/f;)V

    return-void
.end method
