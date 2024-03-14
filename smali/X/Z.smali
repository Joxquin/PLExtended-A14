.class public final LX/Z;
.super Landroidx/recyclerview/widget/G0;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroidx/recyclerview/widget/F0;

.field public final h:LX/Y;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/G0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/G0;->e:Landroidx/recyclerview/widget/F0;

    iput-object v0, p0, LX/Z;->g:Landroidx/recyclerview/widget/F0;

    new-instance v0, LX/Y;

    invoke-direct {v0, p0}, LX/Y;-><init>(LX/Z;)V

    iput-object v0, p0, LX/Z;->h:LX/Y;

    iput-object p1, p0, LX/Z;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/b;
    .locals 0

    iget-object p0, p0, LX/Z;->h:LX/Y;

    return-object p0
.end method
