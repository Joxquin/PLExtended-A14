.class public final Lg0/a;
.super Lg0/E;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lg0/E;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg0/E;->C:Z

    new-instance v0, Lg0/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg0/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lg0/E;->L(Lg0/x;)V

    new-instance v0, Lg0/f;

    invoke-direct {v0}, Lg0/f;-><init>()V

    invoke-virtual {p0, v0}, Lg0/E;->L(Lg0/x;)V

    new-instance v0, Lg0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg0/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lg0/E;->L(Lg0/x;)V

    return-void
.end method
