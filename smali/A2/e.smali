.class public final LA2/e;
.super LD/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:LA2/h;

.field public final synthetic b:LA2/g;


# direct methods
.method public constructor <init>(LA2/g;LA2/h;)V
    .locals 0

    iput-object p1, p0, LA2/e;->b:LA2/g;

    iput-object p2, p0, LA2/e;->a:LA2/h;

    invoke-direct {p0}, LD/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    iget-object v0, p0, LA2/e;->b:LA2/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, LA2/g;->m:Z

    iget-object p0, p0, LA2/e;->a:LA2/h;

    invoke-virtual {p0, p1}, LA2/h;->a(I)V

    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, LA2/e;->b:LA2/g;

    iget v1, v0, LA2/g;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, LA2/g;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, LA2/g;->m:Z

    iget-object p1, v0, LA2/g;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, LA2/e;->a:LA2/h;

    invoke-virtual {p0, p1, v0}, LA2/h;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
