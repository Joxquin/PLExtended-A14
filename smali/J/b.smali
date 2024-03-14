.class public final LJ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LE/f;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(LE/f;I)V
    .locals 0

    iput-object p1, p0, LJ/b;->d:LE/f;

    iput p2, p0, LJ/b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LJ/b;->d:LE/f;

    iget p0, p0, LJ/b;->e:I

    iget-object v0, v0, LE/f;->a:LD/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LD/m;->c(I)V

    :cond_0
    return-void
.end method
