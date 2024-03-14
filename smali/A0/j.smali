.class public final synthetic LA0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LA0/x;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LA0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA0/j;->d:LA0/x;

    const/16 p1, 0x12c

    iput p1, p0, LA0/j;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LA0/j;->d:LA0/x;

    iget p0, p0, LA0/j;->e:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LA0/u;

    invoke-direct {v1}, LA0/u;-><init>()V

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    new-instance v5, LA0/u;

    invoke-direct {v5}, LA0/u;-><init>()V

    iput-object v5, v4, LA0/u;->f:LA0/u;

    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance p0, LA0/q;

    invoke-direct {p0, v0, v1, v4, v2}, LA0/q;-><init>(Ljava/lang/Object;LA0/u;LA0/u;I)V

    sget-object v0, LA0/x;->g:LA0/a;

    invoke-virtual {v0, p0}, LA0/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
