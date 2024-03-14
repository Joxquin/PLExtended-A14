.class public Landroidx/lifecycle/y;
.super Landroidx/lifecycle/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/x;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/x;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/x;->g:I

    iput-object p1, p0, Landroidx/lifecycle/x;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->c(Landroidx/lifecycle/w;)V

    return-void
.end method
