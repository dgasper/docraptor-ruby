require "uri"

module DocRaptor
  class ClientApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # 
    # Creates a document asynchronously.\nYou must use a callback url or the the returned status id and the status api to find out when it completes. Then use the download api to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDoc]
    def async_docs_post(doc, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ClientApi#async_docs_post ..."
      end
      
      # verify the required parameter 'doc' is set
      fail "Missing the required parameter 'doc' when calling async_docs_post" if doc.nil?
      
      # resource path
      path = "/async_docs".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      

      auth_names = ['basicAuth']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDoc')
      if Configuration.debugging
        Configuration.logger.debug "API called: ClientApi#async_docs_post. Result: #{result.inspect}"
      end
      return result
    end

    # 
    # Creates a document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def docs_post(doc, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ClientApi#docs_post ..."
      end
      
      # verify the required parameter 'doc' is set
      fail "Missing the required parameter 'doc' when calling docs_post" if doc.nil?
      
      # resource path
      path = "/docs".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      

      auth_names = ['basicAuth']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ClientApi#docs_post. Result: #{result.inspect}"
      end
      return result
    end

    # 
    # Downloads a document.
    # @param id The download_id returned from status request or a callback.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ClientApi#download_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling download_id_get" if id.nil?
      
      # resource path
      path = "/download/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['basicAuth']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: ClientApi#download_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # 
    # Check on the status of an asynchronously created document.
    # @param id The status_id returned when creating an asynchronous document.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDocStatus]
    def status_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ClientApi#status_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling status_id_get" if id.nil?
      
      # resource path
      path = "/status/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['basicAuth']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDocStatus')
      if Configuration.debugging
        Configuration.logger.debug "API called: ClientApi#status_id_get. Result: #{result.inspect}"
      end
      return result
    end
  end
end




