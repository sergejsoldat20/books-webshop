package web.books.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import web.books.base.CrudService;
import web.books.models.dto.Post;

import java.math.BigDecimal;
import java.util.List;

public interface PostService extends CrudService<Integer> {
    List<Post> getAllByUserId(Integer id);
    Integer getUserIdByPostId(Integer id);
    List<Post> getAll();
    <T> Page<T> findAll(Pageable page, Class<T> resultDtoClass);
    Page<Post> getAllByUserIdPaginated(Pageable page, Integer id);
    Page<Post> getAllFilteredByAuthorName(Pageable page, String authorName);
    Page<Post> getAllFilteredByCategoryName(Pageable page, String categoryName);
    Page<Post> getAllFilteredByPriceIsBetween(Pageable page, BigDecimal lowest, BigDecimal highest);
    Page<Post> getFiltered(Pageable page, BigDecimal priceFrom, BigDecimal priceTo, String categoryName, String authorName, Sort sort, String search);
    Page<Post> searchByName(Pageable page, String search);
    List<String> getAllDistinctAuthors();
    List<String> getAllDistinctCategories();
}
